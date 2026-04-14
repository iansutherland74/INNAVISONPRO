import XCTest
@testable import VisionIINA

final class Wave181Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave181.value(), 181)
    XCTAssertEqual(UtilityWave181.label(), "wave-181")
  }
}
