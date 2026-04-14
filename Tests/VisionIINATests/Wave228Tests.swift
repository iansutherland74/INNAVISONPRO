import XCTest
@testable import VisionIINA

final class Wave228Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave228.value(), 228)
    XCTAssertEqual(UtilityWave228.label(), "wave-228")
  }
}
