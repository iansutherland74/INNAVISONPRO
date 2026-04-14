import XCTest
@testable import VisionIINA

final class Wave658Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave658.value(), 658)
    XCTAssertEqual(UtilityWave658.label(), "wave-658")
  }
}
