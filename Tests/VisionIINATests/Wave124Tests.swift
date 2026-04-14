import XCTest
@testable import VisionIINA

final class Wave124Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave124.value(), 124)
    XCTAssertEqual(UtilityWave124.label(), "wave-124")
  }
}
