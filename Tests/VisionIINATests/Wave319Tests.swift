import XCTest
@testable import VisionIINA

final class Wave319Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave319.value(), 319)
    XCTAssertEqual(UtilityWave319.label(), "wave-319")
  }
}
