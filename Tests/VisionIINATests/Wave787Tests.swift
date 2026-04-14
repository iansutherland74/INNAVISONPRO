import XCTest
@testable import VisionIINA

final class Wave787Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave787.value(), 787)
    XCTAssertEqual(UtilityWave787.label(), "wave-787")
  }
}
