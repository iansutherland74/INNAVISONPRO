import XCTest
@testable import VisionIINA

final class Wave751Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave751.value(), 751)
    XCTAssertEqual(UtilityWave751.label(), "wave-751")
  }
}
