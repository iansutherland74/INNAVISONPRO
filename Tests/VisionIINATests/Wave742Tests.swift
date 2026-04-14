import XCTest
@testable import VisionIINA

final class Wave742Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave742.value(), 742)
    XCTAssertEqual(UtilityWave742.label(), "wave-742")
  }
}
