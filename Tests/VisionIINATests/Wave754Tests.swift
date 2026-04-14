import XCTest
@testable import VisionIINA

final class Wave754Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave754.value(), 754)
    XCTAssertEqual(UtilityWave754.label(), "wave-754")
  }
}
