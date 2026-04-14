import XCTest
@testable import VisionIINA

final class Wave663Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave663.value(), 663)
    XCTAssertEqual(UtilityWave663.label(), "wave-663")
  }
}
