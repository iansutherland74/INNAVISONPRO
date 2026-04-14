import XCTest
@testable import VisionIINA

final class Wave266Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave266.value(), 266)
    XCTAssertEqual(UtilityWave266.label(), "wave-266")
  }
}
