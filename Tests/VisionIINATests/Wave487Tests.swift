import XCTest
@testable import VisionIINA

final class Wave487Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave487.value(), 487)
    XCTAssertEqual(UtilityWave487.label(), "wave-487")
  }
}
