import XCTest
@testable import VisionIINA

final class Wave161Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave161.value(), 161)
    XCTAssertEqual(UtilityWave161.label(), "wave-161")
  }
}
