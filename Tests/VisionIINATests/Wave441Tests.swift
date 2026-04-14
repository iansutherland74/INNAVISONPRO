import XCTest
@testable import VisionIINA

final class Wave441Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave441.value(), 441)
    XCTAssertEqual(UtilityWave441.label(), "wave-441")
  }
}
