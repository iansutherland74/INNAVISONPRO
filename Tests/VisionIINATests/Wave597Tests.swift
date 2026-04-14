import XCTest
@testable import VisionIINA

final class Wave597Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave597.value(), 597)
    XCTAssertEqual(UtilityWave597.label(), "wave-597")
  }
}
