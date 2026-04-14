import XCTest
@testable import VisionIINA

final class Wave353Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave353.value(), 353)
    XCTAssertEqual(UtilityWave353.label(), "wave-353")
  }
}
