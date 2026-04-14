import XCTest
@testable import VisionIINA

final class Wave431Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave431.value(), 431)
    XCTAssertEqual(UtilityWave431.label(), "wave-431")
  }
}
