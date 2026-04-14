import XCTest
@testable import VisionIINA

final class Wave561Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave561.value(), 561)
    XCTAssertEqual(UtilityWave561.label(), "wave-561")
  }
}
