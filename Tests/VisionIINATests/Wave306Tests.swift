import XCTest
@testable import VisionIINA

final class Wave306Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave306.value(), 306)
    XCTAssertEqual(UtilityWave306.label(), "wave-306")
  }
}
