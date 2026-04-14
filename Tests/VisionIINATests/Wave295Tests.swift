import XCTest
@testable import VisionIINA

final class Wave295Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave295.value(), 295)
    XCTAssertEqual(UtilityWave295.label(), "wave-295")
  }
}
