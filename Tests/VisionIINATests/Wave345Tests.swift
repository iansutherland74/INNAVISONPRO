import XCTest
@testable import VisionIINA

final class Wave345Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave345.value(), 345)
    XCTAssertEqual(UtilityWave345.label(), "wave-345")
  }
}
