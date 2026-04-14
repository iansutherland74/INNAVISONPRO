import XCTest
@testable import VisionIINA

final class Wave255Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave255.value(), 255)
    XCTAssertEqual(UtilityWave255.label(), "wave-255")
  }
}
