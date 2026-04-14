import XCTest
@testable import VisionIINA

final class Wave187Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave187.value(), 187)
    XCTAssertEqual(UtilityWave187.label(), "wave-187")
  }
}
