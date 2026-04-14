import XCTest
@testable import VisionIINA

final class Wave697Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave697.value(), 697)
    XCTAssertEqual(UtilityWave697.label(), "wave-697")
  }
}
