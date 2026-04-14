import XCTest
@testable import VisionIINA

final class Wave411Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave411.value(), 411)
    XCTAssertEqual(UtilityWave411.label(), "wave-411")
  }
}
