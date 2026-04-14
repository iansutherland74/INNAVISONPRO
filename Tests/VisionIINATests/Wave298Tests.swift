import XCTest
@testable import VisionIINA

final class Wave298Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave298.value(), 298)
    XCTAssertEqual(UtilityWave298.label(), "wave-298")
  }
}
