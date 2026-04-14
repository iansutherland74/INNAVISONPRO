import XCTest
@testable import VisionIINA

final class Wave310Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave310.value(), 310)
    XCTAssertEqual(UtilityWave310.label(), "wave-310")
  }
}
