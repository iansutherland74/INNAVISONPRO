import XCTest
@testable import VisionIINA

final class Wave289Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave289.value(), 289)
    XCTAssertEqual(UtilityWave289.label(), "wave-289")
  }
}
