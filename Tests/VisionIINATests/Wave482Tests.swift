import XCTest
@testable import VisionIINA

final class Wave482Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave482.value(), 482)
    XCTAssertEqual(UtilityWave482.label(), "wave-482")
  }
}
