import XCTest
@testable import VisionIINA

final class Wave484Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave484.value(), 484)
    XCTAssertEqual(UtilityWave484.label(), "wave-484")
  }
}
