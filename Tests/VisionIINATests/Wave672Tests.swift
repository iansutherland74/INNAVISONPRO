import XCTest
@testable import VisionIINA

final class Wave672Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave672.value(), 672)
    XCTAssertEqual(UtilityWave672.label(), "wave-672")
  }
}
