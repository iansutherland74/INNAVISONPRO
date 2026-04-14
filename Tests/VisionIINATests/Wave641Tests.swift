import XCTest
@testable import VisionIINA

final class Wave641Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave641.value(), 641)
    XCTAssertEqual(UtilityWave641.label(), "wave-641")
  }
}
