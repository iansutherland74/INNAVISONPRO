import XCTest
@testable import VisionIINA

final class Wave516Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave516.value(), 516)
    XCTAssertEqual(UtilityWave516.label(), "wave-516")
  }
}
