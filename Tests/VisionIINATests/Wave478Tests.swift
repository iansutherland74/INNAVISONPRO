import XCTest
@testable import VisionIINA

final class Wave478Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave478.value(), 478)
    XCTAssertEqual(UtilityWave478.label(), "wave-478")
  }
}
