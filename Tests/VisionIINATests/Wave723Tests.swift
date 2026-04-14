import XCTest
@testable import VisionIINA

final class Wave723Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave723.value(), 723)
    XCTAssertEqual(UtilityWave723.label(), "wave-723")
  }
}
