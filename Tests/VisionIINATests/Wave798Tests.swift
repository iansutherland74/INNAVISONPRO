import XCTest
@testable import VisionIINA

final class Wave798Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave798.value(), 798)
    XCTAssertEqual(UtilityWave798.label(), "wave-798")
  }
}
