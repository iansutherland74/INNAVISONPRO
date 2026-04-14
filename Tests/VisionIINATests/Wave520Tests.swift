import XCTest
@testable import VisionIINA

final class Wave520Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave520.value(), 520)
    XCTAssertEqual(UtilityWave520.label(), "wave-520")
  }
}
