import XCTest
@testable import VisionIINA

final class Wave220Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave220.value(), 220)
    XCTAssertEqual(UtilityWave220.label(), "wave-220")
  }
}
