import XCTest
@testable import VisionIINA

final class Wave224Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave224.value(), 224)
    XCTAssertEqual(UtilityWave224.label(), "wave-224")
  }
}
