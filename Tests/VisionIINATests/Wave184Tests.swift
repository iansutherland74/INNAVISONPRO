import XCTest
@testable import VisionIINA

final class Wave184Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave184.value(), 184)
    XCTAssertEqual(UtilityWave184.label(), "wave-184")
  }
}
