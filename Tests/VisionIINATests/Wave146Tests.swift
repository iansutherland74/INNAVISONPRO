import XCTest
@testable import VisionIINA

final class Wave146Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave146.value(), 146)
    XCTAssertEqual(UtilityWave146.label(), "wave-146")
  }
}
