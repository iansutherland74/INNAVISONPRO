import XCTest
@testable import VisionIINA

final class Wave317Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave317.value(), 317)
    XCTAssertEqual(UtilityWave317.label(), "wave-317")
  }
}
