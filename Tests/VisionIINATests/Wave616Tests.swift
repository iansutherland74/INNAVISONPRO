import XCTest
@testable import VisionIINA

final class Wave616Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave616.value(), 616)
    XCTAssertEqual(UtilityWave616.label(), "wave-616")
  }
}
