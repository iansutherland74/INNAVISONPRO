import XCTest
@testable import VisionIINA

final class Wave330Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave330.value(), 330)
    XCTAssertEqual(UtilityWave330.label(), "wave-330")
  }
}
