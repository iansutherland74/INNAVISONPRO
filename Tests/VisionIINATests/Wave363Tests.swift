import XCTest
@testable import VisionIINA

final class Wave363Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave363.value(), 363)
    XCTAssertEqual(UtilityWave363.label(), "wave-363")
  }
}
