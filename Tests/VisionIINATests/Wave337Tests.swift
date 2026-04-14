import XCTest
@testable import VisionIINA

final class Wave337Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave337.value(), 337)
    XCTAssertEqual(UtilityWave337.label(), "wave-337")
  }
}
