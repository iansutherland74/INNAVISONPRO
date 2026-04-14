import XCTest
@testable import VisionIINA

final class Wave683Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave683.value(), 683)
    XCTAssertEqual(UtilityWave683.label(), "wave-683")
  }
}
