import XCTest
@testable import VisionIINA

final class Wave638Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave638.value(), 638)
    XCTAssertEqual(UtilityWave638.label(), "wave-638")
  }
}
