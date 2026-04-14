import XCTest
@testable import VisionIINA

final class Wave455Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave455.value(), 455)
    XCTAssertEqual(UtilityWave455.label(), "wave-455")
  }
}
