import XCTest
@testable import VisionIINA

final class Wave567Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave567.value(), 567)
    XCTAssertEqual(UtilityWave567.label(), "wave-567")
  }
}
