import XCTest
@testable import VisionIINA

final class Wave780Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave780.value(), 780)
    XCTAssertEqual(UtilityWave780.label(), "wave-780")
  }
}
