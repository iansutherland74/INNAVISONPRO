import XCTest
@testable import VisionIINA

final class Wave408Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave408.value(), 408)
    XCTAssertEqual(UtilityWave408.label(), "wave-408")
  }
}
