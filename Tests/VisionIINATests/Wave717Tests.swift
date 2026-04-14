import XCTest
@testable import VisionIINA

final class Wave717Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave717.value(), 717)
    XCTAssertEqual(UtilityWave717.label(), "wave-717")
  }
}
