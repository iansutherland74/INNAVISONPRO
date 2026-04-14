import XCTest
@testable import VisionIINA

final class EqualizationGainTests: XCTestCase {
  func testClamped() {
    XCTAssertEqual(EqualizationGain.clamped(-30), -20)
    XCTAssertEqual(EqualizationGain.clamped(5), 5)
    XCTAssertEqual(EqualizationGain.clamped(30), 20)
  }
}
