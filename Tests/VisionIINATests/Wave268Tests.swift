import XCTest
@testable import VisionIINA

final class Wave268Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave268.value(), 268)
    XCTAssertEqual(UtilityWave268.label(), "wave-268")
  }
}
