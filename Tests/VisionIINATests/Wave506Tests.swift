import XCTest
@testable import VisionIINA

final class Wave506Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave506.value(), 506)
    XCTAssertEqual(UtilityWave506.label(), "wave-506")
  }
}
