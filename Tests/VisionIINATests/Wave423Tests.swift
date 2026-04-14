import XCTest
@testable import VisionIINA

final class Wave423Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave423.value(), 423)
    XCTAssertEqual(UtilityWave423.label(), "wave-423")
  }
}
