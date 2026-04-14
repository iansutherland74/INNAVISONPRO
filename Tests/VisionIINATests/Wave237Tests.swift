import XCTest
@testable import VisionIINA

final class Wave237Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave237.value(), 237)
    XCTAssertEqual(UtilityWave237.label(), "wave-237")
  }
}
