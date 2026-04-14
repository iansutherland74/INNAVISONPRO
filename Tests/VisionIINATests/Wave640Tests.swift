import XCTest
@testable import VisionIINA

final class Wave640Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave640.value(), 640)
    XCTAssertEqual(UtilityWave640.label(), "wave-640")
  }
}
