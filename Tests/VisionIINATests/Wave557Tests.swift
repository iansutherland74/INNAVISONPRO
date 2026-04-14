import XCTest
@testable import VisionIINA

final class Wave557Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave557.value(), 557)
    XCTAssertEqual(UtilityWave557.label(), "wave-557")
  }
}
