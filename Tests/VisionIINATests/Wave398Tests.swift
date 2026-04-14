import XCTest
@testable import VisionIINA

final class Wave398Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave398.value(), 398)
    XCTAssertEqual(UtilityWave398.label(), "wave-398")
  }
}
