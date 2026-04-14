import XCTest
@testable import VisionIINA

final class Wave302Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave302.value(), 302)
    XCTAssertEqual(UtilityWave302.label(), "wave-302")
  }
}
