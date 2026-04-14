import XCTest
@testable import VisionIINA

final class Wave562Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave562.value(), 562)
    XCTAssertEqual(UtilityWave562.label(), "wave-562")
  }
}
