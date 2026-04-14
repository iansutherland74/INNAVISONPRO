import XCTest
@testable import VisionIINA

final class Wave407Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave407.value(), 407)
    XCTAssertEqual(UtilityWave407.label(), "wave-407")
  }
}
