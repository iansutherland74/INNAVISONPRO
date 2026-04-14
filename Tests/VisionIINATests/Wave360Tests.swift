import XCTest
@testable import VisionIINA

final class Wave360Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave360.value(), 360)
    XCTAssertEqual(UtilityWave360.label(), "wave-360")
  }
}
