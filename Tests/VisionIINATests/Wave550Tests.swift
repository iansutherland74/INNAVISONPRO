import XCTest
@testable import VisionIINA

final class Wave550Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave550.value(), 550)
    XCTAssertEqual(UtilityWave550.label(), "wave-550")
  }
}
