import XCTest
@testable import VisionIINA

final class Wave344Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave344.value(), 344)
    XCTAssertEqual(UtilityWave344.label(), "wave-344")
  }
}
