import XCTest
@testable import VisionIINA

final class Wave142Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave142.value(), 142)
    XCTAssertEqual(UtilityWave142.label(), "wave-142")
  }
}
