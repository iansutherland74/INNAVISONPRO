import XCTest
@testable import VisionIINA

final class Wave265Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave265.value(), 265)
    XCTAssertEqual(UtilityWave265.label(), "wave-265")
  }
}
