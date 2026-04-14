import XCTest
@testable import VisionIINA

final class Wave603Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave603.value(), 603)
    XCTAssertEqual(UtilityWave603.label(), "wave-603")
  }
}
