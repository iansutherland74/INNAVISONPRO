import XCTest
@testable import VisionIINA

final class Wave646Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave646.value(), 646)
    XCTAssertEqual(UtilityWave646.label(), "wave-646")
  }
}
