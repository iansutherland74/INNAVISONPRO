import XCTest
@testable import VisionIINA

final class Wave418Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave418.value(), 418)
    XCTAssertEqual(UtilityWave418.label(), "wave-418")
  }
}
