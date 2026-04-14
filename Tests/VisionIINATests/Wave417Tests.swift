import XCTest
@testable import VisionIINA

final class Wave417Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave417.value(), 417)
    XCTAssertEqual(UtilityWave417.label(), "wave-417")
  }
}
