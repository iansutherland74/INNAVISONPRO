import XCTest
@testable import VisionIINA

final class Wave575Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave575.value(), 575)
    XCTAssertEqual(UtilityWave575.label(), "wave-575")
  }
}
