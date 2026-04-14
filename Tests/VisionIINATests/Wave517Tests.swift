import XCTest
@testable import VisionIINA

final class Wave517Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave517.value(), 517)
    XCTAssertEqual(UtilityWave517.label(), "wave-517")
  }
}
