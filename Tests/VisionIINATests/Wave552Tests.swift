import XCTest
@testable import VisionIINA

final class Wave552Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave552.value(), 552)
    XCTAssertEqual(UtilityWave552.label(), "wave-552")
  }
}
