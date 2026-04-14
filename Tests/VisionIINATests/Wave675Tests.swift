import XCTest
@testable import VisionIINA

final class Wave675Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave675.value(), 675)
    XCTAssertEqual(UtilityWave675.label(), "wave-675")
  }
}
