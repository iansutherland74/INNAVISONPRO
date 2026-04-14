import XCTest
@testable import VisionIINA

final class Wave758Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave758.value(), 758)
    XCTAssertEqual(UtilityWave758.label(), "wave-758")
  }
}
