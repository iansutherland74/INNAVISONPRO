import XCTest
@testable import VisionIINA

final class Wave140Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave140.value(), 140)
    XCTAssertEqual(UtilityWave140.label(), "wave-140")
  }
}
