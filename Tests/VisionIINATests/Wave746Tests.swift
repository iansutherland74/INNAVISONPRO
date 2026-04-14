import XCTest
@testable import VisionIINA

final class Wave746Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave746.value(), 746)
    XCTAssertEqual(UtilityWave746.label(), "wave-746")
  }
}
