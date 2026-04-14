import XCTest
@testable import VisionIINA

final class Wave172Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave172.value(), 172)
    XCTAssertEqual(UtilityWave172.label(), "wave-172")
  }
}
