import XCTest
@testable import VisionIINA

final class Wave508Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave508.value(), 508)
    XCTAssertEqual(UtilityWave508.label(), "wave-508")
  }
}
