import XCTest
@testable import VisionIINA

final class Wave435Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave435.value(), 435)
    XCTAssertEqual(UtilityWave435.label(), "wave-435")
  }
}
