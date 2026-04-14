import XCTest
@testable import VisionIINA

final class Wave609Tests: XCTestCase {
  func testValueAndLabel() {
    XCTAssertEqual(UtilityWave609.value(), 609)
    XCTAssertEqual(UtilityWave609.label(), "wave-609")
  }
}
