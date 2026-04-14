import XCTest
@testable import VisionIINA

final class Wave773Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave773.value(), 773)
    XCTAssertEqual(UtilityWave773.label(), "wave-773")
  }
}
