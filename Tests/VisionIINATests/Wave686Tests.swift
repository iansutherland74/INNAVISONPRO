import XCTest
@testable import VisionIINA

final class Wave686Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave686.value(), 686)
    XCTAssertEqual(UtilityWave686.label(), "wave-686")
  }
}
