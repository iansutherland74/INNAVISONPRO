import XCTest
@testable import VisionIINA

final class Wave532Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave532.value(), 532)
    XCTAssertEqual(UtilityWave532.label(), "wave-532")
  }
}
