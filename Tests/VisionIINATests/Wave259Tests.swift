import XCTest
@testable import VisionIINA

final class Wave259Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave259.value(), 259)
    XCTAssertEqual(UtilityWave259.label(), "wave-259")
  }
}
