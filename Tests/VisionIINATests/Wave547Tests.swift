import XCTest
@testable import VisionIINA

final class Wave547Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave547.value(), 547)
    XCTAssertEqual(UtilityWave547.label(), "wave-547")
  }
}
