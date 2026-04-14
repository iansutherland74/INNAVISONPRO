import XCTest
@testable import VisionIINA

final class Wave613Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave613.value(), 613)
    XCTAssertEqual(UtilityWave613.label(), "wave-613")
  }
}
