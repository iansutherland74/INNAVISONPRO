import XCTest
@testable import VisionIINA

final class Wave165Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave165.value(), 165)
    XCTAssertEqual(UtilityWave165.label(), "wave-165")
  }
}
