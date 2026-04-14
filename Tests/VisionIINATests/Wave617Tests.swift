import XCTest
@testable import VisionIINA

final class Wave617Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave617.value(), 617)
    XCTAssertEqual(UtilityWave617.label(), "wave-617")
  }
}
