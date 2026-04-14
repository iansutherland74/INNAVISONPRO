import XCTest
@testable import VisionIINA

final class Wave770Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave770.value(), 770)
    XCTAssertEqual(UtilityWave770.label(), "wave-770")
  }
}
