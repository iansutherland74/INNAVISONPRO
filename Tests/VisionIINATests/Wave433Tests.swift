import XCTest
@testable import VisionIINA

final class Wave433Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave433.value(), 433)
    XCTAssertEqual(UtilityWave433.label(), "wave-433")
  }
}
