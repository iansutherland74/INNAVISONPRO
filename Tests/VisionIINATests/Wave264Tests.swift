import XCTest
@testable import VisionIINA

final class Wave264Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave264.value(), 264)
    XCTAssertEqual(UtilityWave264.label(), "wave-264")
  }
}
