import XCTest
@testable import VisionIINA

final class Wave303Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave303.value(), 303)
    XCTAssertEqual(UtilityWave303.label(), "wave-303")
  }
}
