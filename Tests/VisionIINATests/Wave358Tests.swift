import XCTest
@testable import VisionIINA

final class Wave358Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave358.value(), 358)
    XCTAssertEqual(UtilityWave358.label(), "wave-358")
  }
}
