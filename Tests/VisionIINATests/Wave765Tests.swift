import XCTest
@testable import VisionIINA

final class Wave765Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave765.value(), 765)
    XCTAssertEqual(UtilityWave765.label(), "wave-765")
  }
}
