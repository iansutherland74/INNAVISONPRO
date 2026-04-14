import XCTest
@testable import VisionIINA

final class Wave503Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave503.value(), 503)
    XCTAssertEqual(UtilityWave503.label(), "wave-503")
  }
}
