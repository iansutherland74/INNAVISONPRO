import XCTest
@testable import VisionIINA

final class Wave525Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave525.value(), 525)
    XCTAssertEqual(UtilityWave525.label(), "wave-525")
  }
}
