import XCTest
@testable import VisionIINA

final class Wave286Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave286.value(), 286)
    XCTAssertEqual(UtilityWave286.label(), "wave-286")
  }
}
