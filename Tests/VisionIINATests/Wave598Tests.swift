import XCTest
@testable import VisionIINA

final class Wave598Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave598.value(), 598)
    XCTAssertEqual(UtilityWave598.label(), "wave-598")
  }
}
