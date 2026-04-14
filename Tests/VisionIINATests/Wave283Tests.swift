import XCTest
@testable import VisionIINA

final class Wave283Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave283.value(), 283)
    XCTAssertEqual(UtilityWave283.label(), "wave-283")
  }
}
