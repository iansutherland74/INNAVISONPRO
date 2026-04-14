import XCTest
@testable import VisionIINA

final class Wave794Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave794.value(), 794)
    XCTAssertEqual(UtilityWave794.label(), "wave-794")
  }
}
