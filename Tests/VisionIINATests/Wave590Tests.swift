import XCTest
@testable import VisionIINA

final class Wave590Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave590.value(), 590)
    XCTAssertEqual(UtilityWave590.label(), "wave-590")
  }
}
