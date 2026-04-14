import XCTest
@testable import VisionIINA

final class Wave256Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave256.value(), 256)
    XCTAssertEqual(UtilityWave256.label(), "wave-256")
  }
}
