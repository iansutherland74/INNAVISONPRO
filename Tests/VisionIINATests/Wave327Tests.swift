import XCTest
@testable import VisionIINA

final class Wave327Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave327.value(), 327)
    XCTAssertEqual(UtilityWave327.label(), "wave-327")
  }
}
