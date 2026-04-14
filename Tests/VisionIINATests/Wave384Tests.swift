import XCTest
@testable import VisionIINA

final class Wave384Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave384.value(), 384)
    XCTAssertEqual(UtilityWave384.label(), "wave-384")
  }
}
