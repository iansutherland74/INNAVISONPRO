import XCTest
@testable import VisionIINA

final class Wave383Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave383.value(), 383)
    XCTAssertEqual(UtilityWave383.label(), "wave-383")
  }
}
