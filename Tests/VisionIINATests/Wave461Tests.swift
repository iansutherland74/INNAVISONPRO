import XCTest
@testable import VisionIINA

final class Wave461Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave461.value(), 461)
    XCTAssertEqual(UtilityWave461.label(), "wave-461")
  }
}
