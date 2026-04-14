import XCTest
@testable import VisionIINA

final class Wave440Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave440.value(), 440)
    XCTAssertEqual(UtilityWave440.label(), "wave-440")
  }
}
