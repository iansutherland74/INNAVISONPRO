import XCTest
@testable import VisionIINA

final class Wave373Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave373.value(), 373)
    XCTAssertEqual(UtilityWave373.label(), "wave-373")
  }
}
