import XCTest
@testable import VisionIINA

final class Wave221Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave221.value(), 221)
    XCTAssertEqual(UtilityWave221.label(), "wave-221")
  }
}
