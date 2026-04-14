import XCTest
@testable import VisionIINA

final class Wave796Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave796.value(), 796)
    XCTAssertEqual(UtilityWave796.label(), "wave-796")
  }
}
